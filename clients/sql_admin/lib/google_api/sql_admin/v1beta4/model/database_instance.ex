# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  @moduledoc """
  A Cloud SQL instance resource.

  ## Attributes

  - backendType (String.t): FIRST_GEN: First Generation instance. MySQL only.
  SECOND_GEN: Second Generation instance or PostgreSQL instance.
  EXTERNAL: A database server that is not managed by Google.
  This property is read-only; use the tier property in the settings object to determine the database type and Second or First Generation. Defaults to `nil`.
  - connectionName (String.t): Connection name of the Cloud SQL instance used in connection strings. Defaults to `nil`.
  - currentDiskSize (String.t): The current disk usage of the instance in bytes. This property has been deprecated. Users should use the "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud Monitoring API instead. Please see this announcement for details. Defaults to `nil`.
  - databaseVersion (String.t): The database engine type and version. The databaseVersion field can not be changed after instance creation. MySQL Second Generation instances: MYSQL_5_7 (default) or MYSQL_5_6. PostgreSQL instances: POSTGRES_9_6 (default) or POSTGRES_11 Beta. MySQL First Generation instances: MYSQL_5_6 (default) or MYSQL_5_5 Defaults to `nil`.
  - diskEncryptionConfiguration (GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t): Disk encryption configuration specific to an instance. Applies only to Second Generation instances. Defaults to `nil`.
  - diskEncryptionStatus (GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t): Disk encryption status specific to an instance. Applies only to Second Generation instances. Defaults to `nil`.
  - etag (String.t): This field is deprecated and will be removed from a future version of the API. Use the settings.settingsVersion field instead. Defaults to `nil`.
  - failoverReplica (GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t): The name and status of the failover replica. This property is applicable only to Second Generation instances. Defaults to `nil`.
  - gceZone (String.t): The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone. Defaults to `nil`.
  - instanceType (String.t): The instance type. This can be one of the following.
  CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating from a master.
  ON_PREMISES_INSTANCE: An instance running on the customer's premises.
  READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a read-replica. Defaults to `nil`.
  - ipAddresses (list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t)): The assigned IP addresses for the instance. Defaults to `nil`.
  - ipv6Address (String.t): The IPv6 address assigned to the instance. This property is applicable only to First Generation instances. Defaults to `nil`.
  - kind (String.t): This is always sql#instance. Defaults to `sql#instance`.
  - masterInstanceName (String.t): The name of the instance which will act as master in the replication setup. Defaults to `nil`.
  - maxDiskSize (String.t): The maximum disk size of the instance in bytes. Defaults to `nil`.
  - name (String.t): Name of the Cloud SQL instance. This does not include the project ID. Defaults to `nil`.
  - onPremisesConfiguration (GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t): Configuration specific to on-premises instances. Defaults to `nil`.
  - project (String.t): The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable. Defaults to `nil`.
  - region (String.t): The geographical region. Can be us-central (FIRST_GEN instances only), us-central1 (SECOND_GEN instances only), asia-east1 or europe-west1. Defaults to us-central or us-central1 depending on the instance type (First Generation or Second Generation). The region can not be changed after instance creation. Defaults to `nil`.
  - replicaConfiguration (GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t): Configuration specific to failover replicas and read replicas. Defaults to `nil`.
  - replicaNames (list(String.t)): The replicas of the instance. Defaults to `nil`.
  - rootPassword (String.t): Initial root password. Use only on creation. Defaults to `nil`.
  - selfLink (String.t): The URI of this resource. Defaults to `nil`.
  - serverCaCert (GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t): SSL configuration. Defaults to `nil`.
  - serviceAccountEmailAddress (String.t): The service account email address assigned to the instance. This property is applicable only to Second Generation instances. Defaults to `nil`.
  - settings (GoogleApi.SQLAdmin.V1beta4.Model.Settings.t): The user settings. Defaults to `nil`.
  - state (String.t): The current serving state of the Cloud SQL instance. This can be one of the following.
  RUNNABLE: The instance is running, or is ready to run when accessed.
  SUSPENDED: The instance is not available, for example due to problems with billing.
  PENDING_CREATE: The instance is being created.
  MAINTENANCE: The instance is down for maintenance.
  FAILED: The instance creation failed.
  UNKNOWN_STATE: The state of the instance is unknown. Defaults to `nil`.
  - suspensionReason (list(String.t)): If the instance state is SUSPENDED, the reason for the suspension. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendType => String.t(),
          :connectionName => String.t(),
          :currentDiskSize => String.t(),
          :databaseVersion => String.t(),
          :diskEncryptionConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration.t(),
          :diskEncryptionStatus => GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus.t(),
          :etag => String.t(),
          :failoverReplica =>
            GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica.t(),
          :gceZone => String.t(),
          :instanceType => String.t(),
          :ipAddresses => list(GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.t()),
          :ipv6Address => String.t(),
          :kind => String.t(),
          :masterInstanceName => String.t(),
          :maxDiskSize => String.t(),
          :name => String.t(),
          :onPremisesConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration.t(),
          :project => String.t(),
          :region => String.t(),
          :replicaConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration.t(),
          :replicaNames => list(String.t()),
          :rootPassword => String.t(),
          :selfLink => String.t(),
          :serverCaCert => GoogleApi.SQLAdmin.V1beta4.Model.SslCert.t(),
          :serviceAccountEmailAddress => String.t(),
          :settings => GoogleApi.SQLAdmin.V1beta4.Model.Settings.t(),
          :state => String.t(),
          :suspensionReason => list(String.t())
        }

  field(:backendType)
  field(:connectionName)
  field(:currentDiskSize)
  field(:databaseVersion)

  field(
    :diskEncryptionConfiguration,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionConfiguration
  )

  field(:diskEncryptionStatus, as: GoogleApi.SQLAdmin.V1beta4.Model.DiskEncryptionStatus)
  field(:etag)
  field(:failoverReplica, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstanceFailoverReplica)
  field(:gceZone)
  field(:instanceType)
  field(:ipAddresses, as: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping, type: :list)
  field(:ipv6Address)
  field(:kind)
  field(:masterInstanceName)
  field(:maxDiskSize)
  field(:name)
  field(:onPremisesConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.OnPremisesConfiguration)
  field(:project)
  field(:region)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.ReplicaConfiguration)
  field(:replicaNames, type: :list)
  field(:rootPassword)
  field(:selfLink)
  field(:serverCaCert, as: GoogleApi.SQLAdmin.V1beta4.Model.SslCert)
  field(:serviceAccountEmailAddress)
  field(:settings, as: GoogleApi.SQLAdmin.V1beta4.Model.Settings)
  field(:state)
  field(:suspensionReason, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
